.class public Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "CPCommand.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    .line 27
    const/16 v0, 0xa2

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->addATCommands()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected blacklist addATCommands()V
    .locals 0

    .line 36
    return-void
.end method
