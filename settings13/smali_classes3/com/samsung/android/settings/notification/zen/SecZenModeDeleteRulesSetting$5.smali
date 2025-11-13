.class Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;
.super Ljava/lang/Object;
.source "SecZenModeDeleteRulesSetting.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->setBottomNaviButtonForRemove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 400
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-virtual {p1}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->deleteZenRules()Z

    .line 401
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$5;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->-$$Nest$mfinishSelectMode(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V

    const/4 p0, 0x0

    return p0
.end method
