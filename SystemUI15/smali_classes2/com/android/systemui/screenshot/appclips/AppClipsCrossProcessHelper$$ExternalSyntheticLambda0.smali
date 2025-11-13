.class public final synthetic Lcom/android/systemui/screenshot/appclips/AppClipsCrossProcessHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/os/IBinder;

    sget p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService$Stub;->$r8$clinit:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.android.systemui.screenshot.appclips.IAppClipsScreenshotHelperService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService$Stub$Proxy;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/appclips/IAppClipsScreenshotHelperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method
