.class public final Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

.field public final synthetic val$current:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->val$current:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iget-object p1, p1, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iget p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->val$current:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
