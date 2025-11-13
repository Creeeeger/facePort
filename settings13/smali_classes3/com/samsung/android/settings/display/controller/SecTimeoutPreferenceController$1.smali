.class Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecTimeoutPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecTimeoutPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
