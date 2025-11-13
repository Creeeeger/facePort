.class Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "GigaMultiPathPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->getmMPTCPObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;->access$000(Lcom/samsung/android/settings/connection/GigaMultiPathPreferenceController;Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
