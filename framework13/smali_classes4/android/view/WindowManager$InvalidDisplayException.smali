.class public Landroid/view/WindowManager$InvalidDisplayException;
.super Ljava/lang/RuntimeException;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidDisplayException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 671
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 674
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 675
    return-void
.end method
