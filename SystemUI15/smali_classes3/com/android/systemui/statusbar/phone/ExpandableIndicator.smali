.class public Lcom/android/systemui/statusbar/phone/ExpandableIndicator;
.super Landroid/widget/ImageView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIsDefaultDirection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080b5b

    goto :goto_0

    :cond_0
    const v0, 0x7f080b59

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    const v1, 0x7f130113

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
