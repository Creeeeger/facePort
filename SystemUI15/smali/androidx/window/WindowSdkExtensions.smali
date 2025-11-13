.class public abstract Landroidx/window/WindowSdkExtensions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/window/WindowSdkExtensions$Companion;

.field public static final decorator:Landroidx/window/EmptyDecoratorWindowSdk;


# instance fields
.field public final extensionVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/WindowSdkExtensions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/WindowSdkExtensions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/WindowSdkExtensions;->Companion:Landroidx/window/WindowSdkExtensions$Companion;

    sget-object v0, Landroidx/window/EmptyDecoratorWindowSdk;->INSTANCE:Landroidx/window/EmptyDecoratorWindowSdk;

    sput-object v0, Landroidx/window/WindowSdkExtensions;->decorator:Landroidx/window/EmptyDecoratorWindowSdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    iput v0, p0, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    return-void
.end method


# virtual methods
.method public final requireExtensionVersion$window_release(I)V
    .locals 3

    iget p0, p0, Landroidx/window/WindowSdkExtensions;->extensionVersion:I

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This API requires extension version "

    const-string v2, ", but the device is on "

    invoke-static {p1, p0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
