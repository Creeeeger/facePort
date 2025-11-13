.class public Lcom/samsung/android/settings/bixby/target/IrisAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "IrisAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 10
    const-class v0, Lcom/samsung/android/settings/bixby/target/IrisAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/IrisAction;->TAG:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/IrisAction;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/IrisAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    const-string p1, "fail"

    .line 44
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
