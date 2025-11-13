.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final mSettingsValue:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "network_speed"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;->mSettingsValue:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->-$$Nest$monNetspeedSwitchChange(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    return-void
.end method
