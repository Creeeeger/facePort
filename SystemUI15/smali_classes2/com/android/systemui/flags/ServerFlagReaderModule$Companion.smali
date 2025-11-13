.class public final Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;

.field public static final SYSUI_NAMESPACE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;

    invoke-direct {v0}, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;->$$INSTANCE:Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;

    const-string/jumbo v0, "systemui"

    sput-object v0, Lcom/android/systemui/flags/ServerFlagReaderModule$Companion;->SYSUI_NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
