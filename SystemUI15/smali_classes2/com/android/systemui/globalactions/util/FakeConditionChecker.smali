.class public final Lcom/android/systemui/globalactions/util/FakeConditionChecker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# static fields
.field public static final sConditionMap:Ljava/util/HashMap;

.field public static sInstance:Lcom/android/systemui/globalactions/util/FakeConditionChecker;


# instance fields
.field public final mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mReceiver:Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object p2, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mReceiver:Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_CONDITION"

    const-string v0, "com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_CONDITION"

    invoke-static {p2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;-><init>(Lcom/android/systemui/globalactions/util/FakeConditionChecker;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mReceiver:Lcom/android/systemui/globalactions/util/FakeConditionChecker$1;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p1, "FakeConditionChecker"

    const-string p2, "initialized"

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sput-object p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sInstance:Lcom/android/systemui/globalactions/util/FakeConditionChecker;

    return-void
.end method


# virtual methods
.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Fake : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeConditionChecker"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final updateCondition(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FakeConditionChecker"

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string p1, "added"

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/FakeConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string/jumbo p1, "updated"

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
