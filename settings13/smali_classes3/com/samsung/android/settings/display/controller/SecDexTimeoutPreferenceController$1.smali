.class Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "SecDexTimeoutPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDexTimeoutPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
