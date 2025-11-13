.class Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$1;
.super Ljava/lang/Object;
.source "SecurityDashboardCardsPreference.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateIndicators(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->-$$Nest$mupdateSelectedPage(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;I)V

    return-void
.end method
