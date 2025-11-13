.class public final synthetic Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/TopLevelSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/TopLevelSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/homepage/TopLevelSettings;

    iput-boolean p2, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final doForEach(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/homepage/TopLevelSettings;

    iget-boolean p0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->$r8$lambda$WIdgAF50SnPZEUS0luULvOuvhOA(Lcom/android/settings/homepage/TopLevelSettings;ZLandroidx/preference/Preference;)V

    return-void
.end method
