.class Lcom/samsung/android/share/SemShareCommon$1;
.super Ljava/util/HashMap;
.source "SemShareCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareCommon;->getHtmlCharMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareCommon;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareCommon;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/share/SemShareCommon$1;->this$0:Lcom/samsung/android/share/SemShareCommon;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&nbsp;"

    const-string v1, "\u00a0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&iexcl;"

    const-string v1, "\u00a1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&cent;"

    const-string v1, "\u00a2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&pound;"

    const-string v1, "\u00a3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&curren;"

    const-string v1, "\u00a4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&yen;"

    const-string v1, "\u00a5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&brvbar;"

    const-string v1, "\u00a6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sect;"

    const-string v1, "\u00a7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&uml;"

    const-string v1, "\u00a8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&copy;"

    const-string v1, "\u00a9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ordf;"

    const-string v1, "\u00aa"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&laquo;"

    const-string v1, "\u00ab"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&not;"

    const-string v1, "\u00ac"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&shy;"

    const-string v1, "\u00ad"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&reg;"

    const-string v1, "\u00ae"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&macr;"

    const-string v1, "\u00af"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&deg;"

    const-string v1, "\u00b0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&plusmn;"

    const-string v1, "\u00b1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sup2;"

    const-string v1, "\u00b2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sup3;"

    const-string v1, "\u00b3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&acute;"

    const-string v1, "\u00b4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&micro;"

    const-string v1, "\u00b5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&para;"

    const-string v1, "\u00b6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&middot;"

    const-string v1, "\u00b7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&cedil;"

    const-string v1, "\u00b8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sup1;"

    const-string v1, "\u00b9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ordm;"

    const-string v1, "\u00ba"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&raquo;"

    const-string v1, "\u00bb"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&frac14;"

    const-string v1, "\u00bc"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&frac12;"

    const-string v1, "\u00bd"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&frac34;"

    const-string v1, "\u00be"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&iquest;"

    const-string v1, "\u00bf"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Agrave;"

    const-string v1, "\u00c0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Aacute;"

    const-string v1, "\u00c1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Acirc;"

    const-string v1, "\u00c2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Atilde;"

    const-string v1, "\u00c3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Auml;"

    const-string v1, "\u00c4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Aring;"

    const-string v1, "\u00c5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&AElig;"

    const-string v1, "\u00c6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ccedil;"

    const-string v1, "\u00c7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Egrave;"

    const-string v1, "\u00c8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Eacute;"

    const-string v1, "\u00c9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ecirc;"

    const-string v1, "\u00ca"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Euml;"

    const-string v1, "\u00cb"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Igrave;"

    const-string v1, "\u00cc"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Iacute;"

    const-string v1, "\u00cd"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Icirc;"

    const-string v1, "\u00ce"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Iuml;"

    const-string v1, "\u00cf"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ETH;"

    const-string v1, "\u00d0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ntilde;"

    const-string v1, "\u00d1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ograve;"

    const-string v1, "\u00d2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Oacute;"

    const-string v1, "\u00d3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ocirc;"

    const-string v1, "\u00d4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Otilde;"

    const-string v1, "\u00d5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ouml;"

    const-string v1, "\u00d6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&times;"

    const-string v1, "\u00d7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Oslash;"

    const-string v1, "\u00d8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ugrave;"

    const-string v1, "\u00d9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Uacute;"

    const-string v1, "\u00da"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Ucirc;"

    const-string v1, "\u00db"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Uuml;"

    const-string v1, "\u00dc"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Yacute;"

    const-string v1, "\u00dd"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&THORN;"

    const-string v1, "\u00de"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&szlig;"

    const-string v1, "\u00df"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&agrave;"

    const-string v1, "\u00e0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&aacute;"

    const-string v1, "\u00e1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&acirc;"

    const-string v1, "\u00e2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&atilde;"

    const-string v1, "\u00e3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&auml;"

    const-string v1, "\u00e4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&aring;"

    const-string v1, "\u00e5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&aelig;"

    const-string v1, "\u00e6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ccedil;"

    const-string v1, "\u00e7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&egrave;"

    const-string v1, "\u00e8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&eacute;"

    const-string v1, "\u00e9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ecirc;"

    const-string v1, "\u00ea"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&euml;"

    const-string v1, "\u00eb"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&igrave;"

    const-string v1, "\u00ec"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&iacute;"

    const-string v1, "\u00ed"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&icirc;"

    const-string v1, "\u00ee"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&iuml;"

    const-string v1, "\u00ef"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&eth;"

    const-string v1, "\u00f0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ntilde;"

    const-string v1, "\u00f1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ograve;"

    const-string v1, "\u00f2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&oacute;"

    const-string v1, "\u00f3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ocirc;"

    const-string v1, "\u00f4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&otilde;"

    const-string v1, "\u00f5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ouml;"

    const-string v1, "\u00f6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&divide;"

    const-string v1, "\u00f7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&oslash;"

    const-string v1, "\u00f8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ugrave;"

    const-string v1, "\u00f9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&uacute;"

    const-string v1, "\u00fa"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ucirc;"

    const-string v1, "\u00fb"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&uuml;"

    const-string v1, "\u00fc"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&yacute;"

    const-string v1, "\u00fd"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&thorn;"

    const-string v1, "\u00fe"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&yuml;"

    const-string v1, "\u00ff"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&fnof;"

    const-string v1, "\u0192"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Alpha;"

    const-string v1, "\u0391"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Beta;"

    const-string v1, "\u0392"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Gamma;"

    const-string v1, "\u0393"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Delta;"

    const-string v1, "\u0394"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Epsilon;"

    const-string v1, "\u0395"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Zeta;"

    const-string v1, "\u0396"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Eta;"

    const-string v1, "\u0397"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Theta;"

    const-string v1, "\u0398"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Iota;"

    const-string v1, "\u0399"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Kappa;"

    const-string v1, "\u039a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Lambda;"

    const-string v1, "\u039b"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Mu;"

    const-string v1, "\u039c"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Nu;"

    const-string v1, "\u039d"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Xi;"

    const-string v1, "\u039e"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Omicron;"

    const-string v1, "\u039f"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Pi;"

    const-string v1, "\u03a0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Rho;"

    const-string v1, "\u03a1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Sigma;"

    const-string v1, "\u03a3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Tau;"

    const-string v1, "\u03a4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Upsilon;"

    const-string v1, "\u03a5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Phi;"

    const-string v1, "\u03a6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Chi;"

    const-string v1, "\u03a7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Psi;"

    const-string v1, "\u03a8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Omega;"

    const-string v1, "\u03a9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&alpha;"

    const-string v1, "\u03b1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&beta;"

    const-string v1, "\u03b2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&gamma;"

    const-string v1, "\u03b3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&delta;"

    const-string v1, "\u03b4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&epsilon;"

    const-string v1, "\u03b5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&zeta;"

    const-string v1, "\u03b6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&eta;"

    const-string v1, "\u03b7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&theta;"

    const-string v1, "\u03b8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&iota;"

    const-string v1, "\u03b9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&kappa;"

    const-string v1, "\u03ba"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lambda;"

    const-string v1, "\u03bb"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&mu;"

    const-string v1, "\u03bc"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&nu;"

    const-string v1, "\u03bd"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&xi;"

    const-string v1, "\u03be"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&omicron;"

    const-string v1, "\u03bf"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&pi;"

    const-string v1, "\u03c0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rho;"

    const-string v1, "\u03c1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sigmaf;"

    const-string v1, "\u03c2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sigma;"

    const-string v1, "\u03c3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&tau;"

    const-string v1, "\u03c4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&upsilon;"

    const-string v1, "\u03c5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&phi;"

    const-string v1, "\u03c6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&chi;"

    const-string v1, "\u03c7"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&psi;"

    const-string v1, "\u03c8"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&omega;"

    const-string v1, "\u03c9"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&thetasym;"

    const-string v1, "\u03d1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&upsih;"

    const-string v1, "\u03d2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&piv;"

    const-string v1, "\u03d6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&bull;"

    const-string v1, "\u2022"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&hellip;"

    const-string v1, "\u2026"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&prime;"

    const-string v1, "\u2032"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Prime;"

    const-string v1, "\u2033"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&oline;"

    const-string v1, "\u203e"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&frasl;"

    const-string v1, "\u2044"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&weierp;"

    const-string v1, "\u2118"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&image;"

    const-string v1, "\u2111"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&real;"

    const-string v1, "\u211c"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&trade;"

    const-string v1, "\u2122"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&alefsym;"

    const-string v1, "\u2135"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&larr;"

    const-string v1, "\u2190"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&uarr;"

    const-string v1, "\u2191"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rarr;"

    const-string v1, "\u2192"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&darr;"

    const-string v1, "\u2193"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&harr;"

    const-string v1, "\u2194"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&crarr;"

    const-string v1, "\u21b5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lArr;"

    const-string v1, "\u21d0"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&uArr;"

    const-string v1, "\u21d1"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rArr;"

    const-string v1, "\u21d2"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&dArr;"

    const-string v1, "\u21d3"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&hArr;"

    const-string v1, "\u21d4"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&forall;"

    const-string v1, "\u2200"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&part;"

    const-string v1, "\u2202"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&exist;"

    const-string v1, "\u2203"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&empty;"

    const-string v1, "\u2205"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&nabla;"

    const-string v1, "\u2207"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&isin;"

    const-string v1, "\u2208"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&notin;"

    const-string v1, "\u2209"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ni;"

    const-string v1, "\u220b"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&prod;"

    const-string v1, "\u220f"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sum;"

    const-string v1, "\u2211"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&minus;"

    const-string v1, "\u2212"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lowast;"

    const-string v1, "\u2217"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&radic;"

    const-string v1, "\u221a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&prop;"

    const-string v1, "\u221d"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&infin;"

    const-string v1, "\u221e"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ang;"

    const-string v1, "\u2220"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&and;"

    const-string v1, "\u2227"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&or;"

    const-string v1, "\u2228"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&cap;"

    const-string v1, "\u2229"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&cup;"

    const-string v1, "\u222a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&int;"

    const-string v1, "\u222b"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&there4;"

    const-string v1, "\u2234"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sim;"

    const-string v1, "\u223c"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&cong;"

    const-string v1, "\u2245"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&asymp;"

    const-string v1, "\u2248"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ne;"

    const-string v1, "\u2260"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&equiv;"

    const-string v1, "\u2261"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&le;"

    const-string v1, "\u2264"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ge;"

    const-string v1, "\u2265"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sub;"

    const-string v1, "\u2282"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sup;"

    const-string v1, "\u2283"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&nsub;"

    const-string v1, "\u2284"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sube;"

    const-string v1, "\u2286"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&supe;"

    const-string v1, "\u2287"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&oplus;"

    const-string v1, "\u2295"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&otimes;"

    const-string v1, "\u2297"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&perp;"

    const-string v1, "\u22a5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sdot;"

    const-string v1, "\u22c5"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lceil;"

    const-string v1, "\u2308"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rceil;"

    const-string v1, "\u2309"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lfloor;"

    const-string v1, "\u230a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rfloor;"

    const-string v1, "\u230b"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lang;"

    const-string v1, "\u2329"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rang;"

    const-string v1, "\u232a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&loz;"

    const-string v1, "\u25ca"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&spades;"

    const-string v1, "\u2660"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&clubs;"

    const-string v1, "\u2663"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&hearts;"

    const-string v1, "\u2665"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&diams;"

    const-string v1, "\u2666"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&#39;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&OElig;"

    const-string v1, "\u0152"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&oelig;"

    const-string v1, "\u0153"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Scaron;"

    const-string v1, "\u0160"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&scaron;"

    const-string v1, "\u0161"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Yuml;"

    const-string v1, "\u0178"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&circ;"

    const-string v1, "\u02c6"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&tilde;"

    const-string v1, "\u02dc"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ensp;"

    const-string v1, "\u2002"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&emsp;"

    const-string v1, "\u2003"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&thinsp;"

    const-string v1, "\u2009"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&zwnj;"

    const-string v1, "\u200c"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&zwj;"

    const-string v1, "\u200d"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lrm;"

    const-string v1, "\u200e"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rlm;"

    const-string v1, "\u200f"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ndash;"

    const-string v1, "\u2013"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&mdash;"

    const-string v1, "\u2014"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lsquo;"

    const-string v1, "\u2018"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rsquo;"

    const-string v1, "\u2019"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&sbquo;"

    const-string v1, "\u201a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&ldquo;"

    const-string v1, "\u201c"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rdquo;"

    const-string v1, "\u201d"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&bdquo;"

    const-string v1, "\u201e"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&dagger;"

    const-string v1, "\u2020"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&Dagger;"

    const-string v1, "\u2021"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&permil;"

    const-string v1, "\u2030"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&lsaquo;"

    const-string v1, "\u2039"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&rsaquo;"

    const-string v1, "\u203a"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "&euro;"

    const-string v1, "\u20ac"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
