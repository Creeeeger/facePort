.class final Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/StatusBarInsetsCommand;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider$1$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/StatusBarInsetsCommand;-><init>(Lcom/android/systemui/StatusBarInsetsCommand$Callback;)V

    return-object v0
.end method
