.class public final synthetic Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;->$r8$lambda$ngDEpNyldreQjufYexse0BbgIGE(Lcom/android/settings/notification/app/AppChannelLinkPreferenceController;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
