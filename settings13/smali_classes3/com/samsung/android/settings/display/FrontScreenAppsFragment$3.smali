.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 307
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_0

    xor-int/lit8 v1, p2, 0x1

    .line 309
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz p1, :cond_1

    xor-int/lit8 v1, p2, 0x1

    .line 315
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result p1

    if-nez p1, :cond_3

    .line 322
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$3;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    return-void
.end method
