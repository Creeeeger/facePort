.class public Lcom/android/internal/pm/parsing/PackageParserException;
.super Ljava/lang/Exception;
.source "PackageParserException.java"


# instance fields
.field public final blacklist error:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    return-void
.end method
