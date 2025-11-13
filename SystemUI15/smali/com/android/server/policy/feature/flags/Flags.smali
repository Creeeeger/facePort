.class public final Lcom/android/server/policy/feature/flags/Flags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FEATURE_FLAGS:Lcom/android/server/policy/feature/flags/FeatureFlagsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/policy/feature/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/policy/feature/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/policy/feature/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/policy/feature/flags/FeatureFlagsImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
