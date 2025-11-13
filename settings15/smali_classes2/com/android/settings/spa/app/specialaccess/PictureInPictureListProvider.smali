.class public final Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListProvider;

    return-void
.end method


# virtual methods
.method public final createModel(Landroid/content/Context;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;

    invoke-direct {p0, p1}, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final getPermissionType()Ljava/lang/String;
    .locals 0

    const-string p0, "PictureInPicture"

    return-object p0
.end method
