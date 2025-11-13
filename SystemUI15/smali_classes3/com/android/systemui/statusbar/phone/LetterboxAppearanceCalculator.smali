.class public final Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final darkAppearanceIconColor:I

.field public lastAppearance:Ljava/lang/Integer;

.field public lastAppearanceRegions:Ljava/util/List;

.field public lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

.field public lastLetterboxes:Ljava/util/List;

.field public final letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

.field public final lightAppearanceIconColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    const p3, 0x7f0601e9

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->darkAppearanceIconColor:I

    const p3, 0x7f0600ea

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lightAppearanceIconColor:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearance:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-class v0, Landroid/view/InsetsFlags;

    const-string v1, "appearance"

    invoke-static {v0, v1, p2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearanceRegions:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxes:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n           lastAppearance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n           lastAppearanceRegion: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",\n           lastLetterboxes: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",\n           lastLetterboxAppearance: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n       "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
