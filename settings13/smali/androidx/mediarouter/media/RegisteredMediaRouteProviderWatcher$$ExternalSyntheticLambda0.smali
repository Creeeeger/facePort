.class public final synthetic Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->$r8$lambda$eqQWMB1pYSIe1l5yoYC8l1zl7_c(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method
