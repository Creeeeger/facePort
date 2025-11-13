.class Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "EdgeScreenPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$2;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController$2;->this$0:Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/EdgeScreenPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
