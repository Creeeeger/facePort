.class Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController$1;
.super Ljava/lang/Object;
.source "SecRegulatoryInfoPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x28

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/regulatoryinfo/SecRegulatoryInfoPreferenceController;->showRegulatoryInfo(Landroid/content/Context;I)V

    const/4 p0, 0x0

    return p0
.end method
