.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;
.super Landroid/os/CountDownTimer;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ErrorTimer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mErrorView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit8 v1, v0, 0x3c

    const/4 v2, 0x0

    const/16 v3, 0x3c

    const/4 v4, 0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0001

    add-int/lit8 v7, v1, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-gt v0, v3, :cond_2

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0e0000

    if-ne v0, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method
