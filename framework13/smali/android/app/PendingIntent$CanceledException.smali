.class public Landroid/app/PendingIntent$CanceledException;
.super Landroid/util/AndroidException;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanceledException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 285
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 292
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 293
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 289
    return-void
.end method
