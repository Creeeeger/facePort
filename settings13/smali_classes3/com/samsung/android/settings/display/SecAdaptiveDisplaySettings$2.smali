.class Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;
.super Ljava/lang/Object;
.source "SecAdaptiveDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->this$0:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->-$$Nest$fgetmViewPager(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;->val$current:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
