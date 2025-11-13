.class public final synthetic Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->$r8$lambda$6x8atAI5jZ-ESlO1CXLpC7Qnx98(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
