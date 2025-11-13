.class public final Lcom/android/systemui/plugins/clocks/ClockProviderPlugin$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final synthetic $$INSTANCE:Lcom/android/systemui/plugins/clocks/ClockProviderPlugin$Companion;

.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_CLOCK_PROVIDER"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockProviderPlugin$Companion;

    invoke-direct {v0}, Lcom/android/systemui/plugins/clocks/ClockProviderPlugin$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/plugins/clocks/ClockProviderPlugin$Companion;->$$INSTANCE:Lcom/android/systemui/plugins/clocks/ClockProviderPlugin$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
