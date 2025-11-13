.class public final Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectIntelligentFeatures;->refreshUI(I)V

    return-void
.end method
