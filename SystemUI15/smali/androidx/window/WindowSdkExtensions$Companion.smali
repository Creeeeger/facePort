.class public final Landroidx/window/WindowSdkExtensions$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/WindowSdkExtensions$Companion;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;
    .locals 2

    sget-object v0, Landroidx/window/WindowSdkExtensions;->decorator:Landroidx/window/EmptyDecoratorWindowSdk;

    new-instance v1, Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;

    invoke-direct {v1}, Landroidx/window/WindowSdkExtensions$Companion$getInstance$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method
