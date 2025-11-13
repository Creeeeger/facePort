.class public abstract Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTextView:Landroid/widget/TextView;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    iput-object p3, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setVisibility(I)V
.end method
