.class public final synthetic Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/SettingsPreferenceFragment;

.field public final synthetic f$1:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;->f$1:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment$$ExternalSyntheticLambda4;->f$1:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->$r8$lambda$5deVPLCX7Er0IOcYNOnCPfkGbJ4(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method
