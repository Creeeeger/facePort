.class public final Landroidx/window/core/BuildConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/window/core/BuildConfig;

.field public static final verificationMode:Landroidx/window/core/VerificationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/core/BuildConfig;

    invoke-direct {v0}, Landroidx/window/core/BuildConfig;-><init>()V

    sput-object v0, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    sget-object v0, Landroidx/window/core/VerificationMode;->QUIET:Landroidx/window/core/VerificationMode;

    sput-object v0, Landroidx/window/core/BuildConfig;->verificationMode:Landroidx/window/core/VerificationMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
