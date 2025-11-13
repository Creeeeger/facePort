.class public final synthetic Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;


# instance fields
.field public final synthetic f$0:Landroid/content/res/ColorStateList;

.field public final synthetic f$1:Landroid/content/res/ColorStateList;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$1:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public final doForEach(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$0:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda2;->f$1:Landroid/content/res/ColorStateList;

    invoke-static {v0, p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->$r8$lambda$8wVdgnvVsdwyOEzSjfb170k5pTY(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroidx/preference/Preference;)V

    return-void
.end method
