.class Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;
.super Ljava/lang/Object;
.source "WifiApExpandablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->-$$Nest$fgetmOnPreferenceItemCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;->-$$Nest$fgetmOnPreferenceItemCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference;)Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApExpandablePreference$OnPreferenceItemCLickListener;->onPreferenceItemClicked(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
