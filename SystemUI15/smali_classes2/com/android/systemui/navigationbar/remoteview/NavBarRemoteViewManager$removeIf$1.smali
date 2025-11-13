.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;->$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;->$packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
