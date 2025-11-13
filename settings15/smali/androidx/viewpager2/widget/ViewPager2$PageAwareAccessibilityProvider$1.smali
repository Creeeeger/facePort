.class public final Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->this$1:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 2

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->this$1:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_0
    return v0

    :pswitch_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$1;->this$1:Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
