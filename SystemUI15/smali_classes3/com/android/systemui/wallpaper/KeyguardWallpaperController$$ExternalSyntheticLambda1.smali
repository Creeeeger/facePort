.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->$r8$lambda$EG0gQOZLZG2rZ3JVMqdpjjIo4Yo(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->onLockWallpaperChanged(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardWallpaperController"

    :try_start_0
    const-string/jumbo v1, "setLockWallpaperCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System dead?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
