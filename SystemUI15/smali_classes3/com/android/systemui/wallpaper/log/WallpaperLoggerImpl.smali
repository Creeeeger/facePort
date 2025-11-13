.class public final Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallpaper/log/WallpaperLogger;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogBufferFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl$log$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl$log$2;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
