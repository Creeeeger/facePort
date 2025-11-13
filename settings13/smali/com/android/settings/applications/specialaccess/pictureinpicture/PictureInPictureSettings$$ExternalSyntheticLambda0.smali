.class public final synthetic Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/ApplicationInfo;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->$r8$lambda$rXQvuArrh-LwmelrJCoL8xROFDU(Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
