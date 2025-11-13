.class public final Landroidx/preference/PreferenceGroupAdapter$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceGroupAdapter;

.field public final synthetic val$group:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter$3;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter$3;->val$group:Landroidx/preference/PreferenceGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$3;->val$group:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    iput v1, v0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$3;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    iget-object p0, v0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onExpandButtonClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
