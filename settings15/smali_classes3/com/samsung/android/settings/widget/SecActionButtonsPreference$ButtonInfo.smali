.class public final Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsEnabled:Z

.field public mListener:Landroid/view/View$OnClickListener;

.field public mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field public mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field public mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    return-void
.end method
