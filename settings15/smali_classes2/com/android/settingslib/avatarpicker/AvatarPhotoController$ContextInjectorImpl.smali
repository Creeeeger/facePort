.class public final Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFileAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mFileAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createTempImageUri(Ljava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/avatarpicker/AvatarPhotoController$ContextInjectorImpl;->mFileAuthority:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
