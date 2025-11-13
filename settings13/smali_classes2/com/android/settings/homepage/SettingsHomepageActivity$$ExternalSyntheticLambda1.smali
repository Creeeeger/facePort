.class public final synthetic Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    iput-object p2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->$r8$lambda$9jtmrgTpIPgK6EQYgpR1CFMzclM(Lcom/android/settings/homepage/SettingsHomepageActivity;Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    return-object p0
.end method
