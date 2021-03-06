#!/usr/bin/env python3
#
# Produce a for the experimental data. Shall we produce cactus plots instead?
#
# Igor Konnov, 2020

import getopt
import os.path
import sys

import matplotlib

# we are running a server, do not use x11
matplotlib.use("Agg")

import matplotlib.pyplot as plt
import matplotlib.cbook as cbook
import numpy as np
from matplotlib.backends.backend_pdf import PdfPages

# We define the following linetypes in the order of preference.
# If you run out of markers, extend this list.
LINETYPES = [
    "rs-",
    "bo-",
    "g^-",
    "mv-",
    "kD-",
    "c<-",
    "r^-",
    "bs-",
    "gv-",
    "mD-",
    "k<-",
    "co-",
    "rv-",
    "b^-",
    "go-",
    "m<-",
    "ko-",
    "cs-",
]


def plot(opts, x_field, x_title, y_field, y_title, out_name, csvs):
    if len(csvs) > len(LINETYPES):
        raise Exception("Ran out of line types. Extend LINETYPES in the script")

    for csv, marker in zip(csvs, LINETYPES):
        data = np.genfromtxt(
            csv, dtype=None, delimiter=",", names=True, encoding="utf-8"
        )
        (name, _) = os.path.splitext(os.path.basename(csv))
        # print data.dtype.names # to see the column names
        plt.plot(data[x_field], data[y_field], marker, label=name, alpha=0.7)

    plt.xlabel(x_title)

    if opts["logscale"]:
        plt.semilogy()
        plt.ylabel("%s, logscale" % y_title)
    else:
        plt.ylabel(y_title)

    plt.grid(True, alpha=0.2)
    plt.legend(loc=0)  # best
    # pp = PdfPages(out_name)
    # pp.savefig
    # pp.close()
    plt.savefig(out_name, format="svg")


def usage():
    print(
        "Use: %s [--logscale] <x-field> <x-title> <y-field> "
        + "<y-title> <out>.svg <in_1>.csv ... <in_n>.csv" % sys.argv[0]
    )
    sys.exit(1)


def parse_opts(argv):
    try:
        opts, args = getopt.getopt(argv[1:], "h", ["help", "logscale"])
    except getopt.GetoptError as err:
        # print help information and exit:
        print(err)  # will print something like "option -a not recognized"
        usage()
        sys.exit(2)

    logscale = False
    for o, a in opts:
        if o in ("-h", "--help"):
            usage()
            sys.exit()
        elif o in ("--logscale"):
            logscale = True
        else:
            assert False, "unhandled option"

    return ({"logscale": logscale}, args)


if __name__ == "__main__":
    (opts, args) = parse_opts(sys.argv)
    if len(args) < 6:
        usage()
        sys.exit()

    x_field = args[0]
    x_title = args[1]
    y_field = args[2]
    y_title = args[3]
    out_name = args[4]
    csv_names = args[5:]

    plot(opts, x_field, x_title, y_field, y_title, out_name, csv_names)
