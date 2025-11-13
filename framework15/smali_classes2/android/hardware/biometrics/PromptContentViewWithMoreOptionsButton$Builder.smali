.class public final Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
.super Ljava/lang/Object;
.source "PromptContentViewWithMoreOptionsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;
    .locals 5

    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    iget-object v1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mDescription:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The listener of more options button on prompt content must be set and non-null if PromptContentViewWithMoreOptionsButton is used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The executor for the listener of more options button on prompt content must be set and non-null if PromptContentViewWithMoreOptionsButton is used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mDescription:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The character number of description exceeds 225"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMoreOptionsButtonListener(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton$Builder;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method
