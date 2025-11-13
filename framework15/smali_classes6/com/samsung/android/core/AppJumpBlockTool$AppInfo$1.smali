.class Lcom/samsung/android/core/AppJumpBlockTool$AppInfo$1;
.super Ljava/lang/Object;
.source "AppJumpBlockTool.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    invoke-direct {v0}, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->isSystemApp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->packageName:Ljava/lang/String;

    const-class v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iput-object v1, v0, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->resolvedInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo$1;->newArray(I)[Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    move-result-object p1

    return-object p1
.end method
