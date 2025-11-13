.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/WifiIcon$Hidden;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "hidden"

    return-object p0
.end method
