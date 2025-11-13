.class public final synthetic Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperChangeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dls_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void
.end method
