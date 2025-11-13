.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appIconPkgOption:Ljava/lang/String;

.field public uiModeOption:I

.field public visibleOption:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;-><init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;-><init>(ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    iget-boolean v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    iget-boolean v3, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    iget p1, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->visibleOption:Z

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->appIconPkgOption:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->uiModeOption:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CoverLauncherWidgetOptions(visibleOption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", appIconPkgOption="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uiModeOption="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {p0, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
