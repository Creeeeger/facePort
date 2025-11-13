.class public abstract Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;
.super Ljava/lang/Object;
.source "KnoxLockScreenButtonController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mTextView:Landroid/widget/TextView;

.field protected mUserId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    .line 15
    iput p2, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    .line 16
    iput-object p3, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getVisibility()I
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    return p0
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public updateLayout()V
    .locals 0

    return-void
.end method
