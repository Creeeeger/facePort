.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

.field public final synthetic f$1:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/drawer/Tile;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/drawer/Tile;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->$r8$lambda$eiNrS0cyWTR5yThFtw8L7zsdf-8(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
