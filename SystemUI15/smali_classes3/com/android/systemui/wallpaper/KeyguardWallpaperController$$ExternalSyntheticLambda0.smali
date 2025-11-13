.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
