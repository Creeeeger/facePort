.class public abstract Lokio/Okio;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method public static final source(Ljava/io/InputStream;)Lokio/InputStreamSource;
    .locals 2

    .line 1
    sget v0, Lokio/Okio__JvmOkioKt;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lokio/InputStreamSource;

    .line 9
    .line 10
    new-instance v1, Lokio/Timeout;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
