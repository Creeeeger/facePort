.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/drawer/Tile;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/drawer/Tile;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->$r8$lambda$dnEfglE8ifYrHel11usRLFY8bbU(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
