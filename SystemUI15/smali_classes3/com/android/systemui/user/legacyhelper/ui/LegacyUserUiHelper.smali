.class public final Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;

    invoke-direct {v0}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUserRecordName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;ZZZ)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    if-eqz v1, :cond_0

    const v0, 0x7f13072c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_1

    const v0, 0x1040617

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_4

    iget-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    iget-boolean v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    iget-boolean v6, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    move v1, p2

    move v2, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserSwitcherActionTextResourceId(ZZZZZZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final getUserSwitcherActionIconResourceId(ZZZZZ)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const p0, 0x7f0807f2

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const p0, 0x7f0807f6

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f0807f1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const p0, 0x7f0807f9

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    const p0, 0x7f080995

    goto :goto_0

    :cond_4
    const p0, 0x7f080823

    :goto_0
    return p0
.end method

.method public static final getUserSwitcherActionTextResourceId(ZZZZZZZ)I
    .locals 0

    if-nez p0, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const p0, 0x7f13073c

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    if-eqz p5, :cond_3

    const p0, 0x7f13072e

    goto :goto_2

    :cond_3
    const p2, 0x1040617

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    :goto_1
    move p0, p2

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    const p0, 0x7f131413

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_7

    const p0, 0x7f130188

    goto :goto_2

    :cond_7
    if-eqz p6, :cond_8

    const p0, 0x7f130b95

    :goto_2
    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This should never happen!"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
