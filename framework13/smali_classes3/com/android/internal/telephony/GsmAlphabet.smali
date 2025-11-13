.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field public static final greylist-max-o GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GSM"

.field public static final greylist-max-o UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final greylist-max-o UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final greylist-max-o UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final greylist-max-o UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final blacklist charToGsm:Landroid/util/SparseIntArray;

.field private static final blacklist charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final blacklist gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final blacklist gsmToChar:Landroid/util/SparseIntArray;

.field private static final greylist sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final greylist sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static greylist-max-o sDisableCountryEncodingCheck:Z

.field private static blacklist sEnableIgnoreSpecialChar:Z

.field private static greylist sEnabledLockingShiftTables:[I

.field private static greylist sEnabledSingleShiftTables:[I

.field private static blacklist sGsmSpaceChar:I

.field private static greylist sHighestEnabledSingleShiftCode:I

.field private static final greylist sLanguageShiftTables:[Ljava/lang/String;

.field private static final greylist sLanguageTables:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsEnabledSingleShiftTables()[I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHighestEnabledSingleShiftCode()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 15

    .line 1134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1138
    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    .line 1183
    const-string v1, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const-string v2, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const-string v3, ""

    const-string v4, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    const-string/jumbo v5, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    const-string/jumbo v6, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    const-string/jumbo v7, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    const-string v8, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    const-string v9, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    const-string/jumbo v10, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    const-string/jumbo v11, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    const-string v12, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    const-string/jumbo v13, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    const-string/jumbo v14, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1377
    const-string v1, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    const-string v2, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    const-string v3, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    const-string v4, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    const-string v5, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v6, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v7, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v8, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v9, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v10, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v11, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1510
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 1511
    array-length v0, v0

    .line 1512
    .local v0, "numTables":I
    array-length v1, v1

    .line 1513
    .local v1, "numShiftTables":I
    const-string v2, "GSM"

    if-eq v0, v1, :cond_0

    .line 1514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: language tables array length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != shift tables array length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    new-array v3, v0, [Landroid/util/SparseIntArray;

    sput-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1519
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, " (expected 128 or 0)"

    const-string v5, " length "

    const/16 v6, 0x80

    if-ge v3, v0, :cond_3

    .line 1520
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v7, v3

    .line 1522
    .local v7, "table":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 1523
    .local v8, "tableLen":I
    if-eqz v8, :cond_1

    if-eq v8, v6, :cond_1

    .line 1524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: language tables index "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_1
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1529
    .local v4, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v4, v5, v3

    .line 1530
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v8, :cond_2

    .line 1531
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1532
    .local v6, "c":C
    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1530
    .end local v6    # "c":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1519
    .end local v4    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    .end local v7    # "table":Ljava/lang/String;
    .end local v8    # "tableLen":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1536
    .end local v3    # "i":I
    :cond_3
    new-array v3, v1, [Landroid/util/SparseIntArray;

    sput-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1537
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    const/16 v7, 0x20

    if-ge v3, v1, :cond_7

    .line 1538
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v8, v8, v3

    .line 1540
    .local v8, "shiftTable":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 1541
    .local v9, "shiftTableLen":I
    if-eqz v9, :cond_4

    if-eq v9, v6, :cond_4

    .line 1542
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: language shift tables index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_4
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10, v9}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1547
    .local v10, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v10, v11, v3

    .line 1548
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    if-ge v11, v9, :cond_6

    .line 1549
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1550
    .local v12, "c":C
    if-eq v12, v7, :cond_5

    .line 1551
    invoke-virtual {v10, v12, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1548
    .end local v12    # "c":C
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1537
    .end local v8    # "shiftTable":Ljava/lang/String;
    .end local v9    # "shiftTableLen":I
    .end local v10    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v11    # "j":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1769
    .end local v0    # "numTables":I
    .end local v1    # "numShiftTables":I
    .end local v3    # "i":I
    :cond_7
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1770
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1771
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1772
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1775
    const/4 v2, 0x0

    .line 1777
    .local v2, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    const/16 v4, 0x40

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1778
    const/16 v2, 0xa3

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    const/16 v2, 0x24

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    const/16 v2, 0xa5

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1781
    const/16 v2, 0xe8

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    const/16 v2, 0xe9

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    const/16 v2, 0xf9

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    const/16 v2, 0xec

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    const/16 v2, 0xf2

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    const/16 v2, 0xc7

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .restart local v2    # "i":I
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    const/16 v5, 0xd8

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    const/16 v2, 0xf8

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    const/16 v2, 0xd

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    const/16 v2, 0xc5

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    const/16 v2, 0xe5

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1794
    const/16 v2, 0x394

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1795
    const/16 v2, 0x5f

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    const/16 v2, 0x3a6

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    const/16 v2, 0x393

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    const/16 v2, 0x39b

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    const/16 v2, 0x3a9

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1800
    const/16 v2, 0x3a0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    const/16 v2, 0x3a8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    const/16 v2, 0x3a3

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1803
    const/16 v2, 0x398

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1804
    const/16 v2, 0x39e

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    const v2, 0xffff

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    const/16 v2, 0xc6

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    const/16 v2, 0xe6

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    const/16 v2, 0xdf

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1809
    const/16 v2, 0xc9

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1812
    const/16 v5, 0x21

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    const/16 v2, 0x22

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    const/16 v2, 0x23

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1815
    const/16 v2, 0xa4

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    const/16 v2, 0x25

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    const/16 v2, 0x26

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1818
    const/16 v2, 0x27

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1819
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "i":I
    .restart local v2    # "i":I
    const/16 v5, 0x28

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1820
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .restart local v6    # "i":I
    const/16 v8, 0x29

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1821
    const/16 v2, 0x2a

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1822
    const/16 v2, 0x2b

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1823
    const/16 v2, 0x2c

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1824
    const/16 v2, 0x2d

    add-int/lit8 v6, v9, 0x1

    .end local v9    # "i":I
    .restart local v6    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1825
    const/16 v2, 0x2e

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1826
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "i":I
    .restart local v2    # "i":I
    const/16 v6, 0x2f

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1828
    const/16 v9, 0x30

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "i":I
    .local v10, "i":I
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1829
    const/16 v2, 0x31

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1830
    const/16 v2, 0x32

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1831
    const/16 v2, 0x33

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1832
    const/16 v2, 0x34

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1833
    const/16 v2, 0x35

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1834
    const/16 v2, 0x36

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    const/16 v2, 0x37

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    const/16 v2, 0x38

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1837
    const/16 v2, 0x39

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1838
    const/16 v2, 0x3a

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1839
    const/16 v2, 0x3b

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1840
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "i":I
    .restart local v2    # "i":I
    const/16 v10, 0x3c

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "i":I
    .restart local v9    # "i":I
    const/16 v11, 0x3d

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1842
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "i":I
    .restart local v2    # "i":I
    const/16 v12, 0x3e

    invoke-virtual {v0, v12, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1843
    const/16 v9, 0x3f

    add-int/lit8 v13, v2, 0x1

    .end local v2    # "i":I
    .local v13, "i":I
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1845
    const/16 v2, 0xa1

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1846
    const/16 v2, 0x41

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1847
    const/16 v2, 0x42

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1848
    const/16 v2, 0x43

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1849
    const/16 v2, 0x44

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1850
    const/16 v2, 0x45

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1851
    const/16 v2, 0x46

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    const/16 v2, 0x47

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1853
    const/16 v2, 0x48

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    const/16 v2, 0x49

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1855
    const/16 v2, 0x4a

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1856
    const/16 v2, 0x4b

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1857
    const/16 v2, 0x4c

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1858
    const/16 v2, 0x4d

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1859
    const/16 v2, 0x4e

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1860
    const/16 v2, 0x4f

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1862
    const/16 v2, 0x50

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1863
    const/16 v2, 0x51

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1864
    const/16 v2, 0x52

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1865
    const/16 v2, 0x53

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1866
    const/16 v2, 0x54

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1867
    const/16 v2, 0x55

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1868
    const/16 v2, 0x56

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1869
    const/16 v2, 0x57

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    const/16 v2, 0x58

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    const/16 v2, 0x59

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1872
    const/16 v2, 0x5a

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1873
    const/16 v2, 0xc4

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    const/16 v2, 0xd6

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1875
    const/16 v2, 0xd1

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    const/16 v2, 0xdc

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1877
    const/16 v2, 0xa7

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1879
    const/16 v2, 0xbf

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1880
    const/16 v2, 0x61

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1881
    const/16 v2, 0x62

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    const/16 v2, 0x63

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "i":I
    .restart local v13    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1883
    const/16 v2, 0x64

    add-int/lit8 v9, v13, 0x1

    .end local v13    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1884
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "i":I
    .restart local v2    # "i":I
    const/16 v13, 0x65

    invoke-virtual {v0, v13, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    const/16 v9, 0x66

    add-int/lit8 v14, v2, 0x1

    .end local v2    # "i":I
    .local v14, "i":I
    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1886
    const/16 v2, 0x67

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1887
    const/16 v2, 0x68

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    const/16 v2, 0x69

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1889
    const/16 v2, 0x6a

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    const/16 v2, 0x6b

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1891
    const/16 v2, 0x6c

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1892
    const/16 v2, 0x6d

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    const/16 v2, 0x6e

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1894
    const/16 v2, 0x6f

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1896
    const/16 v2, 0x70

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1897
    const/16 v2, 0x71

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1898
    const/16 v2, 0x72

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1899
    const/16 v2, 0x73

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1900
    const/16 v2, 0x74

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1901
    const/16 v2, 0x75

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1902
    const/16 v2, 0x76

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1903
    const/16 v2, 0x77

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1904
    const/16 v2, 0x78

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1905
    const/16 v2, 0x79

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1906
    const/16 v2, 0x7a

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1907
    const/16 v2, 0xe4

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1908
    const/16 v2, 0xf6

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1909
    const/16 v2, 0xf1

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1910
    const/16 v2, 0xfc

    add-int/lit8 v14, v9, 0x1

    .end local v9    # "i":I
    .restart local v14    # "i":I
    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1911
    const/16 v2, 0xe0

    add-int/lit8 v9, v14, 0x1

    .end local v14    # "i":I
    .restart local v9    # "i":I
    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 1913
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1914
    const/16 v2, 0x5e

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1915
    const/16 v2, 0x7b

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1916
    const/16 v2, 0x7d

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1917
    const/16 v2, 0x5c

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1918
    const/16 v2, 0x5b

    invoke-virtual {v1, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1919
    const/16 v2, 0x7e

    invoke-virtual {v1, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1920
    const/16 v2, 0x5d

    invoke-virtual {v1, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 1921
    const/16 v2, 0x7c

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1922
    const/16 v2, 0x20ac

    invoke-virtual {v1, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1924
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1925
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 1926
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1925
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1929
    .end local v1    # "j":I
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1930
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    if-ge v1, v0, :cond_9

    .line 1931
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1930
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1934
    .end local v1    # "j":I
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1935
    .end local v0    # "size":I
    .end local v9    # "i":I
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist charToGsm(C)I
    .locals 3
    .param p0, "c"    # C

    .line 159
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 160
    :catch_0
    move-exception v1

    .line 162
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v2, v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static greylist charToGsm(CZ)I
    .locals 5
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 185
    .local v2, "ret":I
    if-ne v2, v3, :cond_2

    .line 186
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 188
    if-ne v2, v3, :cond_1

    .line 189
    if-nez p1, :cond_0

    .line 192
    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0

    .line 190
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    .line 195
    :cond_1
    const/16 v0, 0x1b

    return v0

    .line 199
    :cond_2
    return v2
.end method

.method public static greylist-max-o charToGsmExtended(C)I
    .locals 3
    .param p0, "c"    # C

    .line 213
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 215
    .local v0, "ret":I
    if-ne v0, v2, :cond_0

    .line 216
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v2, v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1

    .line 219
    :cond_0
    return v0
.end method

.method public static blacklist convertEachCharacter(C)C
    .locals 3
    .param p0, "c"    # C

    .line 1565
    move v0, p0

    .line 1568
    .local v0, "ret":C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 1569
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1570
    move v0, p0

    goto :goto_0

    .line 1571
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1572
    move v0, p0

    goto :goto_0

    .line 1575
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    .line 1579
    :cond_2
    :goto_0
    return v0
.end method

.method private static blacklist convertNonGSMCharacter(C)C
    .locals 4
    .param p0, "c"    # C

    .line 1583
    move v0, p0

    .line 1585
    .local v0, "temp":C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1586
    sparse-switch v0, :sswitch_data_0

    .line 1749
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    .line 1732
    :sswitch_0
    const/16 v0, 0x58

    goto/16 :goto_1

    .line 1725
    :sswitch_1
    const/16 v0, 0x59

    goto/16 :goto_1

    .line 1724
    :sswitch_2
    const/16 v0, 0x54

    goto/16 :goto_1

    .line 1723
    :sswitch_3
    const/16 v0, 0x50

    goto/16 :goto_1

    .line 1727
    :sswitch_4
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 1734
    :sswitch_5
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 1735
    :sswitch_6
    const/16 v0, 0x4d

    goto/16 :goto_1

    .line 1730
    :sswitch_7
    const/16 v0, 0x4b

    goto/16 :goto_1

    .line 1726
    :sswitch_8
    const/16 v0, 0x49

    goto/16 :goto_1

    .line 1729
    :sswitch_9
    const/16 v0, 0x48

    goto/16 :goto_1

    .line 1731
    :sswitch_a
    const/16 v0, 0x5a

    goto/16 :goto_1

    .line 1722
    :sswitch_b
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 1733
    :sswitch_c
    const/16 v0, 0x42

    goto/16 :goto_1

    .line 1728
    :sswitch_d
    const/16 v0, 0x41

    goto/16 :goto_1

    .line 1714
    :sswitch_e
    const/16 v0, 0x7a

    goto/16 :goto_1

    .line 1718
    :sswitch_f
    const/16 v0, 0x5a

    goto/16 :goto_1

    .line 1715
    :sswitch_10
    const/16 v0, 0x7a

    goto/16 :goto_1

    .line 1719
    :sswitch_11
    const/16 v0, 0x5a

    goto/16 :goto_1

    .line 1713
    :sswitch_12
    const/16 v0, 0x7a

    goto/16 :goto_1

    .line 1717
    :sswitch_13
    const/16 v0, 0x5a

    goto/16 :goto_1

    .line 1711
    :sswitch_14
    const/16 v0, 0x59

    goto/16 :goto_1

    .line 1744
    :sswitch_15
    const/16 v0, 0x75

    goto/16 :goto_1

    .line 1743
    :sswitch_16
    const/16 v0, 0x55

    goto/16 :goto_1

    .line 1698
    :sswitch_17
    const/16 v0, 0x75

    goto/16 :goto_1

    .line 1704
    :sswitch_18
    const/16 v0, 0x55

    goto/16 :goto_1

    .line 1699
    :sswitch_19
    const/16 v0, 0x75

    goto/16 :goto_1

    .line 1705
    :sswitch_1a
    const/16 v0, 0x55

    goto/16 :goto_1

    .line 1692
    :sswitch_1b
    const/16 v0, 0x74

    goto/16 :goto_1

    .line 1694
    :sswitch_1c
    const/16 v0, 0x54

    goto/16 :goto_1

    .line 1685
    :sswitch_1d
    const/16 v0, 0x73

    goto/16 :goto_1

    .line 1689
    :sswitch_1e
    const/16 v0, 0x53

    goto/16 :goto_1

    .line 1686
    :sswitch_1f
    const/16 v0, 0x73

    goto/16 :goto_1

    .line 1690
    :sswitch_20
    const/16 v0, 0x53

    goto/16 :goto_1

    .line 1684
    :sswitch_21
    const/16 v0, 0x73

    goto/16 :goto_1

    .line 1688
    :sswitch_22
    const/16 v0, 0x53

    goto/16 :goto_1

    .line 1679
    :sswitch_23
    const/16 v0, 0x72

    goto/16 :goto_1

    .line 1682
    :sswitch_24
    const/16 v0, 0x52

    goto/16 :goto_1

    .line 1678
    :sswitch_25
    const/16 v0, 0x72

    goto/16 :goto_1

    .line 1681
    :sswitch_26
    const/16 v0, 0x52

    goto/16 :goto_1

    .line 1669
    :sswitch_27
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1676
    :sswitch_28
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 1742
    :sswitch_29
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1741
    :sswitch_2a
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 1668
    :sswitch_2b
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1675
    :sswitch_2c
    const/16 v0, 0x4f

    goto/16 :goto_1

    .line 1660
    :sswitch_2d
    const/16 v0, 0x6e

    goto/16 :goto_1

    .line 1663
    :sswitch_2e
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 1659
    :sswitch_2f
    const/16 v0, 0x6e

    goto/16 :goto_1

    .line 1662
    :sswitch_30
    const/16 v0, 0x4e

    goto/16 :goto_1

    .line 1653
    :sswitch_31
    const/16 v0, 0x6c

    goto/16 :goto_1

    .line 1657
    :sswitch_32
    const/16 v0, 0x4c

    goto/16 :goto_1

    .line 1652
    :sswitch_33
    const/16 v0, 0x6c

    goto/16 :goto_1

    .line 1656
    :sswitch_34
    const/16 v0, 0x4c

    goto/16 :goto_1

    .line 1651
    :sswitch_35
    const/16 v0, 0x6c

    goto/16 :goto_1

    .line 1655
    :sswitch_36
    const/16 v0, 0x4c

    goto/16 :goto_1

    .line 1641
    :sswitch_37
    const/16 v0, 0x69

    goto/16 :goto_1

    .line 1648
    :sswitch_38
    const/16 v0, 0x49

    goto/16 :goto_1

    .line 1642
    :sswitch_39
    const/16 v0, 0x69

    goto/16 :goto_1

    .line 1649
    :sswitch_3a
    const/16 v0, 0x49

    goto/16 :goto_1

    .line 1634
    :sswitch_3b
    const/16 v0, 0x67

    goto/16 :goto_1

    .line 1636
    :sswitch_3c
    const/16 v0, 0x47

    goto/16 :goto_1

    .line 1624
    :sswitch_3d
    const/16 v0, 0x65

    goto/16 :goto_1

    .line 1631
    :sswitch_3e
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 1623
    :sswitch_3f
    const/16 v0, 0x65

    goto/16 :goto_1

    .line 1630
    :sswitch_40
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 1625
    :sswitch_41
    const/16 v0, 0x65

    goto/16 :goto_1

    .line 1632
    :sswitch_42
    const/16 v0, 0x45

    goto/16 :goto_1

    .line 1617
    :sswitch_43
    const/16 v0, 0x64

    goto/16 :goto_1

    .line 1619
    :sswitch_44
    const/16 v0, 0x44

    goto/16 :goto_1

    .line 1611
    :sswitch_45
    const/16 v0, 0x63

    goto/16 :goto_1

    .line 1615
    :sswitch_46
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 1610
    :sswitch_47
    const/16 v0, 0x63

    goto/16 :goto_1

    .line 1614
    :sswitch_48
    const/16 v0, 0x43

    goto/16 :goto_1

    .line 1600
    :sswitch_49
    const/16 v0, 0x61

    goto/16 :goto_1

    .line 1608
    :sswitch_4a
    const/16 v0, 0x41

    goto/16 :goto_1

    .line 1601
    :sswitch_4b
    const/16 v0, 0x61

    goto/16 :goto_1

    .line 1607
    :sswitch_4c
    const/16 v0, 0x41

    goto/16 :goto_1

    .line 1708
    :sswitch_4d
    const/16 v0, 0x79

    goto/16 :goto_1

    .line 1707
    :sswitch_4e
    const/16 v0, 0x79

    goto/16 :goto_1

    .line 1740
    :sswitch_4f
    const/16 v0, 0x75

    goto/16 :goto_1

    .line 1697
    :sswitch_50
    const/16 v0, 0x75

    goto/16 :goto_1

    .line 1696
    :sswitch_51
    const/16 v0, 0x75

    goto/16 :goto_1

    .line 1739
    :sswitch_52
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1667
    :sswitch_53
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1666
    :sswitch_54
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1665
    :sswitch_55
    const/16 v0, 0x6f

    goto/16 :goto_1

    .line 1640
    :sswitch_56
    const/16 v0, 0x69

    goto/16 :goto_1

    .line 1639
    :sswitch_57
    const/16 v0, 0x69

    goto/16 :goto_1

    .line 1638
    :sswitch_58
    const/16 v0, 0x69

    goto/16 :goto_1

    .line 1622
    :sswitch_59
    const/16 v0, 0x65

    goto/16 :goto_1

    .line 1621
    :sswitch_5a
    const/16 v0, 0x65

    goto/16 :goto_1

    .line 1738
    :sswitch_5b
    const/16 v0, 0x65

    goto/16 :goto_1

    .line 1612
    :sswitch_5c
    const/16 v0, 0x63

    goto :goto_1

    .line 1599
    :sswitch_5d
    const/16 v0, 0x61

    goto :goto_1

    .line 1598
    :sswitch_5e
    const/16 v0, 0x61

    goto :goto_1

    .line 1597
    :sswitch_5f
    const/16 v0, 0x61

    goto :goto_1

    .line 1710
    :sswitch_60
    const/16 v0, 0x59

    goto :goto_1

    .line 1703
    :sswitch_61
    const/16 v0, 0x55

    goto :goto_1

    .line 1702
    :sswitch_62
    const/16 v0, 0x55

    goto :goto_1

    .line 1701
    :sswitch_63
    const/16 v0, 0x55

    goto :goto_1

    .line 1674
    :sswitch_64
    const/16 v0, 0x4f

    goto :goto_1

    .line 1673
    :sswitch_65
    const/16 v0, 0x4f

    goto :goto_1

    .line 1672
    :sswitch_66
    const/16 v0, 0x4f

    goto :goto_1

    .line 1671
    :sswitch_67
    const/16 v0, 0x4f

    goto :goto_1

    .line 1647
    :sswitch_68
    const/16 v0, 0x49

    goto :goto_1

    .line 1646
    :sswitch_69
    const/16 v0, 0x49

    goto :goto_1

    .line 1645
    :sswitch_6a
    const/16 v0, 0x49

    goto :goto_1

    .line 1644
    :sswitch_6b
    const/16 v0, 0x49

    goto :goto_1

    .line 1629
    :sswitch_6c
    const/16 v0, 0x45

    goto :goto_1

    .line 1628
    :sswitch_6d
    const/16 v0, 0x45

    goto :goto_1

    .line 1627
    :sswitch_6e
    const/16 v0, 0x45

    goto :goto_1

    .line 1606
    :sswitch_6f
    const/16 v0, 0x41

    goto :goto_1

    .line 1605
    :sswitch_70
    const/16 v0, 0x41

    goto :goto_1

    .line 1604
    :sswitch_71
    const/16 v0, 0x41

    goto :goto_1

    .line 1603
    :sswitch_72
    const/16 v0, 0x41

    goto :goto_1

    .line 1750
    :cond_0
    :goto_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 1752
    const/16 v0, 0x20

    goto :goto_1

    .line 1754
    :cond_1
    const v0, 0xfeff

    .line 1761
    :cond_2
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1763
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_72
        0xc1 -> :sswitch_71
        0xc2 -> :sswitch_70
        0xc3 -> :sswitch_6f
        0xc8 -> :sswitch_6e
        0xca -> :sswitch_6d
        0xcb -> :sswitch_6c
        0xcc -> :sswitch_6b
        0xcd -> :sswitch_6a
        0xce -> :sswitch_69
        0xcf -> :sswitch_68
        0xd2 -> :sswitch_67
        0xd3 -> :sswitch_66
        0xd4 -> :sswitch_65
        0xd5 -> :sswitch_64
        0xd9 -> :sswitch_63
        0xda -> :sswitch_62
        0xdb -> :sswitch_61
        0xdd -> :sswitch_60
        0xe1 -> :sswitch_5f
        0xe2 -> :sswitch_5e
        0xe3 -> :sswitch_5d
        0xe7 -> :sswitch_5c
        0xe9 -> :sswitch_5b
        0xea -> :sswitch_5a
        0xeb -> :sswitch_59
        0xed -> :sswitch_58
        0xee -> :sswitch_57
        0xef -> :sswitch_56
        0xf3 -> :sswitch_55
        0xf4 -> :sswitch_54
        0xf5 -> :sswitch_53
        0xf6 -> :sswitch_52
        0xfa -> :sswitch_51
        0xfb -> :sswitch_50
        0xfc -> :sswitch_4f
        0xfd -> :sswitch_4e
        0xff -> :sswitch_4d
        0x100 -> :sswitch_4c
        0x101 -> :sswitch_4b
        0x104 -> :sswitch_4a
        0x105 -> :sswitch_49
        0x106 -> :sswitch_48
        0x107 -> :sswitch_47
        0x10c -> :sswitch_46
        0x10d -> :sswitch_45
        0x10e -> :sswitch_44
        0x10f -> :sswitch_43
        0x112 -> :sswitch_42
        0x113 -> :sswitch_41
        0x118 -> :sswitch_40
        0x119 -> :sswitch_3f
        0x11a -> :sswitch_3e
        0x11b -> :sswitch_3d
        0x11e -> :sswitch_3c
        0x11f -> :sswitch_3b
        0x12a -> :sswitch_3a
        0x12b -> :sswitch_39
        0x130 -> :sswitch_38
        0x131 -> :sswitch_37
        0x139 -> :sswitch_36
        0x13a -> :sswitch_35
        0x13d -> :sswitch_34
        0x13e -> :sswitch_33
        0x141 -> :sswitch_32
        0x142 -> :sswitch_31
        0x143 -> :sswitch_30
        0x144 -> :sswitch_2f
        0x147 -> :sswitch_2e
        0x148 -> :sswitch_2d
        0x14c -> :sswitch_2c
        0x14d -> :sswitch_2b
        0x150 -> :sswitch_2a
        0x151 -> :sswitch_29
        0x152 -> :sswitch_28
        0x153 -> :sswitch_27
        0x154 -> :sswitch_26
        0x155 -> :sswitch_25
        0x158 -> :sswitch_24
        0x159 -> :sswitch_23
        0x15a -> :sswitch_22
        0x15b -> :sswitch_21
        0x15e -> :sswitch_20
        0x15f -> :sswitch_1f
        0x160 -> :sswitch_1e
        0x161 -> :sswitch_1d
        0x164 -> :sswitch_1c
        0x165 -> :sswitch_1b
        0x16a -> :sswitch_1a
        0x16b -> :sswitch_19
        0x16e -> :sswitch_18
        0x16f -> :sswitch_17
        0x170 -> :sswitch_16
        0x171 -> :sswitch_15
        0x178 -> :sswitch_14
        0x179 -> :sswitch_13
        0x17a -> :sswitch_12
        0x17b -> :sswitch_11
        0x17c -> :sswitch_10
        0x17d -> :sswitch_f
        0x17e -> :sswitch_e
        0x391 -> :sswitch_d
        0x392 -> :sswitch_c
        0x395 -> :sswitch_b
        0x396 -> :sswitch_a
        0x397 -> :sswitch_9
        0x399 -> :sswitch_8
        0x39a -> :sswitch_7
        0x39c -> :sswitch_6
        0x39d -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a1 -> :sswitch_3
        0x3a4 -> :sswitch_2
        0x3a5 -> :sswitch_1
        0x3a7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o countGsmSeptets(C)I
    .locals 2
    .param p0, "c"    # C

    .line 750
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 751
    :catch_0
    move-exception v1

    .line 753
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    return v0
.end method

.method public static greylist countGsmSeptets(CZ)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 769
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 770
    return v3

    .line 773
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 774
    const/4 v0, 0x2

    return v0

    .line 777
    :cond_1
    if-nez p1, :cond_2

    .line 781
    return v3

    .line 778
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static greylist-max-o countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 19
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    if-nez v2, :cond_0

    .line 864
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 867
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 868
    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 869
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {v0, v1, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    .line 870
    .local v4, "septets":I
    if-ne v4, v6, :cond_1

    .line 871
    return-object v3

    .line 873
    :cond_1
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 874
    iput v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 875
    if-le v4, v5, :cond_2

    .line 876
    add-int/lit16 v3, v4, 0x98

    div-int/lit16 v3, v3, 0x99

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 878
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x99

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    .line 881
    :cond_2
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 882
    rsub-int v3, v4, 0xa0

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 884
    :goto_0
    return-object v2

    .line 887
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v4    # "septets":I
    :cond_3
    sget v2, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 888
    .local v2, "maxSingleShiftCode":I
    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v9, v9

    add-int/2addr v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 892
    .local v8, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v9, v4}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v10, v9

    :goto_1
    if-ge v4, v10, :cond_5

    aget v11, v9, v4

    .line 895
    .local v11, "i":I
    if-eqz v11, :cond_4

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 896
    new-instance v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v12, v11}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v11    # "i":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 900
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 902
    .local v4, "sz":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_f

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    .line 903
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 904
    .local v10, "c":C
    const/16 v11, 0x1b

    if-ne v10, v11, :cond_6

    .line 905
    const-string v11, "GSM"

    const-string v12, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    goto/16 :goto_8

    .line 909
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 910
    .local v12, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v13, v13, v14

    invoke-virtual {v13, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 911
    .local v13, "tableIndex":I
    if-ne v13, v6, :cond_b

    .line 913
    const/4 v14, 0x0

    .local v14, "table":I
    :goto_4
    if-gt v14, v2, :cond_a

    .line 914
    iget-object v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v15, v15, v14

    if-eq v15, v6, :cond_9

    .line 915
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v15, v15, v14

    invoke-virtual {v15, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 916
    .local v15, "shiftTableIndex":I
    if-ne v15, v6, :cond_8

    .line 917
    if-eqz v1, :cond_7

    .line 919
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v16, v3, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    .line 920
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v16, v3, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v14

    goto :goto_5

    .line 923
    :cond_7
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v6, v3, v14

    goto :goto_5

    .line 927
    :cond_8
    iget-object v3, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v16, v3, v14

    add-int/lit8 v16, v16, 0x2

    aput v16, v3, v14

    .line 913
    .end local v15    # "shiftTableIndex":I
    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_4

    .end local v14    # "table":I
    :cond_a
    goto :goto_7

    .line 933
    :cond_b
    const/4 v3, 0x0

    .local v3, "table":I
    :goto_6
    if-gt v3, v2, :cond_d

    .line 934
    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v14, v14, v3

    if-eq v14, v6, :cond_c

    .line 935
    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v15, v14, v3

    add-int/2addr v15, v7

    aput v15, v14, v3

    .line 933
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 939
    .end local v3    # "table":I
    .end local v12    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "tableIndex":I
    :cond_d
    :goto_7
    const/4 v3, 0x0

    goto :goto_3

    .line 902
    .end local v10    # "c":C
    :cond_e
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 943
    .end local v9    # "i":I
    :cond_f
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 944
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v9, 0x7fffffff

    iput v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 945
    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 946
    const v10, 0x7fffffff

    .line 947
    .local v10, "minUnencodableCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 948
    .restart local v12    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v13, 0x0

    .local v13, "shiftTable":I
    :goto_a
    if-gt v13, v2, :cond_1a

    .line 949
    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v14, v14, v13

    .line 950
    .local v14, "septets":I
    if-ne v14, v6, :cond_10

    .line 951
    goto :goto_e

    .line 954
    :cond_10
    iget v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v15, :cond_11

    if-eqz v13, :cond_11

    .line 955
    const/16 v15, 0x8

    .local v15, "udhLength":I
    goto :goto_c

    .line 956
    .end local v15    # "udhLength":I
    :cond_11
    iget v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v15, :cond_13

    if-eqz v13, :cond_12

    goto :goto_b

    .line 959
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "udhLength":I
    goto :goto_c

    .line 957
    .end local v15    # "udhLength":I
    :cond_13
    :goto_b
    const/4 v15, 0x5

    .line 963
    .restart local v15    # "udhLength":I
    :goto_c
    add-int v6, v14, v15

    if-le v6, v5, :cond_15

    .line 964
    if-nez v15, :cond_14

    .line 965
    const/4 v15, 0x1

    .line 967
    :cond_14
    add-int/lit8 v15, v15, 0x6

    .line 968
    rsub-int v6, v15, 0xa0

    .line 969
    .local v6, "septetsPerMessage":I
    add-int v17, v14, v6

    add-int/lit8 v17, v17, -0x1

    div-int v17, v17, v6

    .line 970
    .local v17, "msgCount":I
    mul-int v18, v17, v6

    sub-int v18, v18, v14

    .line 971
    .end local v6    # "septetsPerMessage":I
    .local v18, "septetsRemaining":I
    move/from16 v6, v17

    move/from16 v5, v18

    goto :goto_d

    .line 972
    .end local v17    # "msgCount":I
    .end local v18    # "septetsRemaining":I
    :cond_15
    const/16 v17, 0x1

    .line 973
    .restart local v17    # "msgCount":I
    rsub-int v6, v15, 0xa0

    sub-int v18, v6, v14

    move/from16 v6, v17

    move/from16 v5, v18

    .line 976
    .end local v17    # "msgCount":I
    .local v5, "septetsRemaining":I
    .local v6, "msgCount":I
    :goto_d
    iget-object v7, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v7, v7, v13

    .line 977
    .local v7, "unencodableCount":I
    if-eqz v1, :cond_16

    if-le v7, v10, :cond_16

    .line 978
    goto :goto_e

    .line 980
    :cond_16
    if-eqz v1, :cond_17

    if-lt v7, v10, :cond_18

    :cond_17
    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-lt v6, v9, :cond_18

    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v6, v9, :cond_19

    iget v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v5, v9, :cond_19

    .line 983
    :cond_18
    move v10, v7

    .line 984
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 985
    iput v14, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 986
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 987
    iget v9, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    iput v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 988
    iput v13, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 948
    .end local v5    # "septetsRemaining":I
    .end local v6    # "msgCount":I
    .end local v7    # "unencodableCount":I
    .end local v14    # "septets":I
    .end local v15    # "udhLength":I
    :cond_19
    :goto_e
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0xa0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const v9, 0x7fffffff

    goto :goto_a

    .line 991
    .end local v12    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "shiftTable":I
    :cond_1a
    const/16 v5, 0xa0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const v9, 0x7fffffff

    goto/16 :goto_9

    .line 993
    :cond_1b
    iget v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_1c

    .line 994
    const/4 v5, 0x0

    return-object v5

    .line 997
    :cond_1c
    return-object v3
.end method

.method public static blacklist countGsmSeptets(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "ignoreSpecialChar"    # Z

    .line 2140
    sput-boolean p2, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    .line 2141
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    .line 2142
    .local v0, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    .line 2143
    return-object v0
.end method

.method public static greylist-max-o countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 814
    .local v1, "sz":I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, p2

    .line 815
    .local v2, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p3

    .line 816
    .local v3, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 817
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 818
    .local v5, "c":C
    const/16 v6, 0x1b

    if-ne v5, v6, :cond_0

    .line 819
    const-string v6, "GSM"

    const-string v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    goto :goto_2

    .line 822
    :cond_0
    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 824
    :cond_1
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 825
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 826
    :cond_2
    if-eqz p1, :cond_5

    .line 827
    add-int/lit8 v0, v0, 0x1

    .line 833
    :goto_1
    sget-boolean v7, Lcom/android/internal/telephony/GsmAlphabet;->sEnableIgnoreSpecialChar:Z

    if-eqz v7, :cond_4

    const/16 v7, 0xa5

    if-eq v5, v7, :cond_3

    const/16 v7, 0xa3

    if-eq v5, v7, :cond_3

    const/16 v7, 0x20ac

    if-ne v5, v7, :cond_4

    .line 835
    :cond_3
    return v6

    .line 816
    .end local v5    # "c":C
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 829
    .restart local v5    # "c":C
    :cond_5
    return v6

    .line 839
    .end local v4    # "i":I
    .end local v5    # "c":C
    :cond_6
    return v0
.end method

.method public static blacklist countGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 20
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "maxEmailLen"    # I

    .line 1962
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sEnabledSingleShiftTables.length + sEnabledLockingShiftTables.length == 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v4, v4

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v5, v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GSM"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v3, v3

    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v7, v7

    add-int/2addr v3, v7

    const/4 v7, 0x0

    const/4 v9, -0x1

    if-nez v3, :cond_8

    .line 1965
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1966
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {v0, v1, v5, v5}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    .line 1968
    .local v4, "septets":I
    if-ne v4, v9, :cond_1

    .line 1969
    return-object v7

    .line 1975
    :cond_1
    if-lez v2, :cond_2

    rsub-int v7, v2, 0xa0

    add-int/lit8 v8, v7, -0x1

    goto :goto_1

    .line 1976
    :cond_2
    const/16 v8, 0xa0

    :goto_1
    move v7, v8

    .line 1977
    .local v7, "maxLenPerSMS":I
    const/4 v8, 0x0

    .line 1979
    .local v8, "maxLenPerSMSWithHeader":I
    if-lez v2, :cond_3

    rsub-int v10, v2, 0x99

    sub-int/2addr v10, v6

    goto :goto_2

    .line 1981
    :cond_3
    const/16 v10, 0x99

    :goto_2
    move v8, v10

    .line 1983
    if-eq v4, v9, :cond_4

    if-gt v4, v7, :cond_4

    .line 1984
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1985
    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1986
    sub-int v5, v7, v4

    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1987
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_4

    .line 1988
    :cond_4
    if-eq v4, v9, :cond_7

    .line 1989
    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1990
    if-le v4, v7, :cond_6

    .line 1991
    add-int/lit8 v9, v8, -0x1

    add-int/2addr v9, v4

    div-int/2addr v9, v8

    iput v9, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1994
    rem-int v9, v4, v8

    if-lez v9, :cond_5

    .line 1995
    rem-int v5, v4, v8

    sub-int v5, v8, v5

    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1998
    :cond_5
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 2001
    :cond_6
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2002
    sub-int v5, v7, v4

    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2004
    :goto_3
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2008
    :cond_7
    :goto_4
    return-object v3

    .line 2011
    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v4    # "septets":I
    .end local v7    # "maxLenPerSMS":I
    .end local v8    # "maxLenPerSMSWithHeader":I
    :cond_8
    sget v3, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 2012
    .local v3, "maxSingleShiftCode":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v11, v11

    add-int/2addr v11, v6

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2016
    .local v10, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v11, v5}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2017
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v12, v11

    :goto_5
    if-ge v5, v12, :cond_a

    aget v13, v11, v5

    .line 2020
    .local v13, "i":I
    if-eqz v13, :cond_9

    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v14, v14, v13

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 2021
    new-instance v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v14, v13}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2017
    .end local v13    # "i":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2025
    :cond_a
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 2027
    .local v5, "sz":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v5, :cond_14

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    .line 2028
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 2029
    .local v12, "c":C
    const/16 v13, 0x1b

    if-ne v12, v13, :cond_b

    .line 2030
    const-string v13, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    goto/16 :goto_c

    .line 2034
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 2035
    .local v14, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v7, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v7, v15, v7

    invoke-virtual {v7, v12, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 2036
    .local v7, "tableIndex":I
    if-ne v7, v9, :cond_10

    .line 2039
    const/4 v15, 0x0

    .local v15, "table":I
    :goto_8
    if-gt v15, v3, :cond_f

    .line 2040
    iget-object v8, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v8, v8, v15

    if-eq v8, v9, :cond_e

    .line 2041
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v8, v8, v15

    .line 2042
    invoke-virtual {v8, v12, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 2043
    .local v8, "shiftTableIndex":I
    if-ne v8, v9, :cond_d

    .line 2044
    if-eqz v1, :cond_c

    .line 2046
    iget-object v9, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v18, v9, v15

    add-int/lit8 v18, v18, 0x1

    aput v18, v9, v15

    .line 2047
    iget-object v9, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v18, v9, v15

    add-int/lit8 v18, v18, 0x1

    aput v18, v9, v15

    goto :goto_9

    .line 2051
    :cond_c
    iget-object v9, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    const/16 v17, -0x1

    aput v17, v9, v15

    goto :goto_9

    .line 2055
    :cond_d
    iget-object v9, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v18, v9, v15

    add-int/lit8 v18, v18, 0x2

    aput v18, v9, v15

    .line 2039
    .end local v8    # "shiftTableIndex":I
    :cond_e
    :goto_9
    add-int/lit8 v15, v15, 0x1

    const/4 v9, -0x1

    goto :goto_8

    .end local v15    # "table":I
    :cond_f
    goto :goto_b

    .line 2061
    :cond_10
    const/4 v8, 0x0

    .local v8, "table":I
    :goto_a
    if-gt v8, v3, :cond_12

    .line 2062
    iget-object v9, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v9, v9, v8

    const/4 v15, -0x1

    if-eq v9, v15, :cond_11

    .line 2063
    iget-object v9, v14, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v15, v9, v8

    add-int/2addr v15, v6

    aput v15, v9, v8

    .line 2061
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 2067
    .end local v7    # "tableIndex":I
    .end local v8    # "table":I
    .end local v14    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    :cond_12
    :goto_b
    const/4 v7, 0x0

    const/4 v9, -0x1

    goto :goto_7

    .line 2027
    .end local v12    # "c":C
    :cond_13
    :goto_c
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    goto/16 :goto_6

    .line 2072
    .end local v11    # "i":I
    :cond_14
    new-instance v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2073
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v7, 0x7fffffff

    iput v7, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2074
    iput v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2075
    const v8, 0x7fffffff

    .line 2076
    .local v8, "minUnencodableCount":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 2077
    .local v11, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/4 v12, 0x0

    .local v12, "shiftTable":I
    :goto_e
    if-gt v12, v3, :cond_1f

    .line 2078
    iget-object v13, v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v13, v13, v12

    .line 2079
    .local v13, "septets":I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_15

    .line 2080
    goto :goto_12

    .line 2083
    :cond_15
    iget v15, v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v15, :cond_16

    if-eqz v12, :cond_16

    .line 2084
    const/16 v15, 0x8

    .local v15, "udhLength":I
    goto :goto_10

    .line 2086
    .end local v15    # "udhLength":I
    :cond_16
    iget v15, v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v15, :cond_18

    if-eqz v12, :cond_17

    goto :goto_f

    .line 2090
    :cond_17
    const/4 v15, 0x0

    .restart local v15    # "udhLength":I
    goto :goto_10

    .line 2087
    .end local v15    # "udhLength":I
    :cond_18
    :goto_f
    const/4 v15, 0x5

    .line 2094
    .restart local v15    # "udhLength":I
    :goto_10
    add-int v14, v13, v15

    const/16 v7, 0xa0

    if-le v14, v7, :cond_1a

    .line 2095
    if-nez v15, :cond_19

    .line 2096
    const/4 v15, 0x1

    .line 2098
    :cond_19
    add-int/lit8 v15, v15, 0x6

    .line 2099
    rsub-int v14, v15, 0xa0

    .line 2100
    .local v14, "septetsPerMessage":I
    add-int v16, v13, v14

    add-int/lit8 v16, v16, -0x1

    div-int v16, v16, v14

    .line 2102
    .local v16, "msgCount":I
    mul-int v19, v16, v14

    sub-int v19, v19, v13

    .line 2103
    .end local v14    # "septetsPerMessage":I
    .local v19, "septetsRemaining":I
    move/from16 v14, v16

    move/from16 v6, v19

    goto :goto_11

    .line 2104
    .end local v16    # "msgCount":I
    .end local v19    # "septetsRemaining":I
    :cond_1a
    const/16 v16, 0x1

    .line 2105
    .restart local v16    # "msgCount":I
    rsub-int v14, v15, 0xa0

    sub-int v19, v14, v13

    move/from16 v14, v16

    move/from16 v6, v19

    .line 2110
    .end local v16    # "msgCount":I
    .local v6, "septetsRemaining":I
    .local v14, "msgCount":I
    :goto_11
    iget-object v7, v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v7, v7, v12

    .line 2111
    .local v7, "unencodableCount":I
    if-eqz v1, :cond_1b

    if-le v7, v8, :cond_1b

    .line 2112
    goto :goto_12

    .line 2114
    :cond_1b
    if-eqz v1, :cond_1c

    if-lt v7, v8, :cond_1d

    :cond_1c
    iget v0, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-lt v14, v0, :cond_1d

    iget v0, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v14, v0, :cond_1e

    iget v0, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    if-le v6, v0, :cond_1e

    .line 2117
    :cond_1d
    move v8, v7

    .line 2118
    iput v14, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2119
    iput v13, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2120
    iput v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2121
    iget v0, v11, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    iput v0, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 2122
    iput v12, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 2077
    .end local v6    # "septetsRemaining":I
    .end local v7    # "unencodableCount":I
    .end local v13    # "septets":I
    .end local v14    # "msgCount":I
    .end local v15    # "udhLength":I
    :cond_1e
    :goto_12
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    goto :goto_e

    .line 2125
    .end local v11    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v12    # "shiftTable":I
    :cond_1f
    const/4 v6, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    goto/16 :goto_d

    .line 2127
    :cond_20
    iget v0, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_21

    .line 2128
    const/4 v0, 0x0

    return-object v0

    .line 2131
    :cond_21
    return-object v4
.end method

.method private static greylist-max-o enableCountrySpecificEncodings()V
    .locals 3

    .line 1100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1102
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1070120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1103
    const v1, 0x107011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1105
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1106
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0

    .line 1109
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1111
    :goto_0
    return-void
.end method

.method public static greylist findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1021
    .local v1, "size":I
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, p3

    .line 1022
    .local v2, "charToLangTable":Landroid/util/SparseIntArray;
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p4

    .line 1023
    .local v3, "charToLangShiftTable":Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1024
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 1025
    .local v5, "encodedSeptet":I
    if-ne v5, v6, :cond_1

    .line 1026
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 1027
    if-ne v5, v6, :cond_0

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1031
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1034
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1036
    :goto_1
    if-le v0, p2, :cond_2

    .line 1037
    return v4

    .line 1023
    .end local v5    # "encodedSeptet":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1040
    .end local v4    # "i":I
    :cond_3
    return v1
.end method

.method public static declared-synchronized greylist-max-o getEnabledLockingShiftTables()[I
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1092
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1092
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized greylist-max-o getEnabledSingleShiftTables()[I
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1081
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1081
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static greylist gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    .line 479
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 16
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .line 501
    move/from16 v1, p2

    move/from16 v0, p4

    move/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 503
    .local v3, "ret":Ljava/lang/StringBuilder;
    const-string v4, ", using default"

    const-string v5, "GSM"

    if-ltz v0, :cond_1

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v6, v6

    if-le v0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    goto :goto_1

    .line 504
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown language table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    move v6, v0

    .line 507
    .end local p4    # "languageTable":I
    .local v6, "languageTable":I
    :goto_1
    if-ltz v2, :cond_2

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v0, v0

    if-le v2, v0, :cond_3

    .line 508
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown single shift table "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    move v2, v0

    .line 513
    .end local p5    # "shiftTable":I
    .local v2, "shiftTable":I
    :cond_3
    const/4 v0, 0x0

    .line 514
    .local v0, "prevCharWasEscape":Z
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v8, v7, v6

    .line 515
    .local v8, "languageTableToChar":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v10, v9, v2

    .line 517
    .local v10, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 518
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "no language table for code "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    aget-object v7, v7, v12

    move-object v8, v7

    .line 521
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no single shift table for code "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    aget-object v4, v9, v12

    move-object v10, v4

    .line 526
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_b

    .line 527
    mul-int/lit8 v7, v4, 0x7

    add-int v7, v7, p3

    .line 529
    .local v7, "bitOffset":I
    div-int/lit8 v9, v7, 0x8

    .line 530
    .local v9, "byteOffset":I
    rem-int/lit8 v11, v7, 0x8

    .line 533
    .local v11, "shift":I
    add-int v12, p1, v9

    aget-byte v12, p0, v12

    shr-int/2addr v12, v11

    const/16 v13, 0x7f

    and-int/2addr v12, v13

    .line 536
    .local v12, "gsmVal":I
    const/4 v14, 0x1

    if-le v11, v14, :cond_6

    .line 538
    add-int/lit8 v15, v11, -0x1

    shr-int v15, v13, v15

    and-int/2addr v12, v15

    .line 540
    add-int v15, p1, v9

    add-int/2addr v15, v14

    aget-byte v14, p0, v15

    rsub-int/lit8 v15, v11, 0x8

    shl-int/2addr v14, v15

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 543
    :cond_6
    const/16 v13, 0x1b

    if-eqz v0, :cond_9

    .line 544
    const/16 v14, 0x20

    if-ne v12, v13, :cond_7

    .line 545
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 547
    :cond_7
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 548
    .local v13, "c":C
    if-ne v13, v14, :cond_8

    .line 549
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 551
    :cond_8
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    .end local v13    # "c":C
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 555
    :cond_9
    if-ne v12, v13, :cond_a

    .line 556
    const/4 v0, 0x1

    goto :goto_4

    .line 558
    :cond_a
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v7    # "bitOffset":I
    .end local v9    # "byteOffset":I
    .end local v11    # "shift":I
    .end local v12    # "gsmVal":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 564
    .end local v0    # "prevCharWasEscape":Z
    .end local v4    # "i":I
    .end local v8    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shiftTableToChar":Ljava/lang/String;
    :cond_b
    nop

    .line 566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Error GSM 7 bit packed: "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    const/4 v4, 0x0

    return-object v4
.end method

.method public static greylist gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 585
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-p gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    .line 601
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 602
    .local v2, "isMbcs":Z
    const/4 v3, 0x0

    .line 603
    .local v3, "charset":Ljava/nio/charset/Charset;
    const/4 v4, 0x0

    .line 605
    .local v4, "mbcsBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_0

    .line 606
    const-string/jumbo v5, "us-ascii"

    move-object/from16 v7, p3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 607
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 608
    const/4 v2, 0x1

    .line 609
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 610
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    .line 605
    :cond_0
    move-object/from16 v7, p3

    .line 614
    :cond_1
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    .line 615
    .local v5, "languageTableToChar":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v8, v9, v8

    .line 617
    .local v8, "shiftTableToChar":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v9, "ret":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 619
    .local v10, "prevWasEscape":Z
    move/from16 v11, p1

    .local v11, "i":I
    :goto_1
    add-int v12, p1, v1

    if-ge v11, v12, :cond_c

    .line 622
    aget-byte v12, v0, v11

    const/16 v13, 0xff

    and-int/2addr v12, v13

    .line 624
    .local v12, "c":I
    if-ne v12, v13, :cond_2

    .line 625
    goto/16 :goto_7

    .line 626
    :cond_2
    const/16 v13, 0x1b

    const/16 v14, 0x20

    if-ne v12, v13, :cond_4

    .line 627
    if-eqz v10, :cond_3

    .line 631
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    const/4 v10, 0x0

    goto :goto_6

    .line 634
    :cond_3
    const/4 v10, 0x1

    goto :goto_6

    .line 637
    :cond_4
    if-eqz v10, :cond_8

    .line 639
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_5

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_2

    :cond_5
    move v13, v14

    .line 640
    .local v13, "shiftChar":C
    :goto_2
    if-ne v13, v14, :cond_7

    .line 642
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_6

    .line 643
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 645
    :cond_6
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 648
    :cond_7
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    .end local v13    # "shiftChar":C
    :goto_3
    goto :goto_5

    .line 651
    :cond_8
    if-eqz v2, :cond_a

    const/16 v13, 0x80

    if-lt v12, v13, :cond_a

    add-int/lit8 v13, v11, 0x1

    add-int v15, p1, v1

    if-lt v13, v15, :cond_9

    goto :goto_4

    .line 659
    :cond_9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 660
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    invoke-virtual {v4, v0, v11, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 661
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 662
    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v11, v13

    goto :goto_5

    .line 652
    .end local v13    # "i":I
    .restart local v11    # "i":I
    :cond_a
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_b

    .line 653
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 655
    :cond_b
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    :goto_5
    const/4 v10, 0x0

    .line 619
    .end local v12    # "c":I
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 669
    .end local v11    # "i":I
    :cond_c
    :goto_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static greylist-max-o gsmExtendedToChar(I)C
    .locals 3
    .param p0, "gsmChar"    # I

    .line 259
    const/16 v0, 0x20

    const/16 v1, 0x1b

    if-ne p0, v1, :cond_0

    .line 260
    return v0

    .line 261
    :cond_0
    if-ltz p0, :cond_2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    .line 262
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 263
    .local v1, "c":C
    if-ne v1, v0, :cond_1

    .line 264
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 266
    :cond_1
    return v1

    .line 269
    .end local v1    # "c":C
    :cond_2
    return v0
.end method

.method public static greylist gsmToChar(I)C
    .locals 2
    .param p0, "gsmChar"    # I

    .line 237
    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 238
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 240
    :cond_0
    const/16 v0, 0x20

    return v0
.end method

.method public static greylist-max-o isGsmSeptets(C)Z
    .locals 4
    .param p0, "c"    # C

    .line 786
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 787
    return v3

    .line 790
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 791
    return v3

    .line 794
    :cond_1
    return v1
.end method

.method private static greylist packSmsChar([BII)V
    .locals 5
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    .line 455
    div-int/lit8 v0, p1, 0x8

    .line 456
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    .line 458
    .local v1, "shift":I
    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte v3, p0, v0

    shl-int v4, p2, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 460
    if-le v1, v2, :cond_0

    .line 461
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 463
    :cond_0
    return-void
.end method

.method public static declared-synchronized greylist-max-o setEnabledLockingShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1069
    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1070
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    monitor-exit v0

    return-void

    .line 1068
    .end local p0    # "tables":[I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized greylist-max-o setEnabledSingleShiftTables([I)V
    .locals 3
    .param p0, "tables"    # [I

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    .line 1051
    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1052
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1054
    array-length v2, p0

    if-lez v2, :cond_0

    .line 1055
    array-length v2, p0

    sub-int/2addr v2, v1

    aget v1, p0, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0

    .line 1057
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    :goto_0
    monitor-exit v0

    return-void

    .line 1050
    .end local p0    # "tables":[I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 16
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 404
    .local v3, "dataLen":I
    xor-int/lit8 v4, p2, 0x1

    invoke-static {v0, v4, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    .line 406
    .local v4, "septetCount":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 409
    add-int v4, v4, p1

    .line 410
    const/16 v6, 0xff

    const/4 v7, 0x1

    if-gt v4, v6, :cond_4

    .line 414
    mul-int/lit8 v6, v4, 0x7

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    .line 415
    .local v6, "byteCount":I
    add-int/lit8 v8, v6, 0x1

    new-array v8, v8, [B

    .line 416
    .local v8, "ret":[B
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v9, v9, v1

    .line 417
    .local v9, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v10, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v10, v10, v2

    .line 418
    .local v10, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v11, 0x0

    .local v11, "i":I
    move/from16 v12, p1

    .local v12, "septets":I
    mul-int/lit8 v13, p1, 0x7

    .line 419
    .local v13, "bitOffset":I
    :goto_0
    if-ge v11, v3, :cond_3

    if-ge v12, v4, :cond_3

    .line 421
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 422
    .local v14, "c":C
    invoke-virtual {v9, v14, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 423
    .local v15, "v":I
    if-ne v15, v5, :cond_2

    .line 424
    invoke-virtual {v10, v14, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 425
    if-ne v15, v5, :cond_1

    .line 426
    if-nez p2, :cond_0

    .line 429
    const/16 v5, 0x20

    invoke-virtual {v9, v5, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    goto :goto_1

    .line 427
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v7, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    :cond_1
    const/16 v5, 0x1b

    invoke-static {v8, v13, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 433
    add-int/lit8 v13, v13, 0x7

    .line 434
    add-int/lit8 v12, v12, 0x1

    .line 437
    :cond_2
    :goto_1
    invoke-static {v8, v13, v15}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 438
    nop

    .end local v14    # "c":C
    .end local v15    # "v":I
    add-int/2addr v12, v7

    .line 420
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x7

    const/4 v5, -0x1

    goto :goto_0

    .line 440
    .end local v11    # "i":I
    .end local v12    # "septets":I
    .end local v13    # "bitOffset":I
    :cond_3
    const/4 v5, 0x0

    int-to-byte v7, v4

    aput-byte v7, v8, v5

    .line 441
    return-object v8

    .line 411
    .end local v6    # "byteCount":I
    .end local v8    # "ret":[B
    .end local v9    # "charToLanguageTable":Landroid/util/SparseIntArray;
    .end local v10    # "charToShiftTable":Landroid/util/SparseIntArray;
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string v6, "Payload cannot exceed 255 septets"

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 407
    :cond_5
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    const-string v6, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static greylist-max-o stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 317
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    .line 322
    .local v0, "headerBits":I
    add-int/lit8 v2, v0, 0x6

    div-int/lit8 v2, v2, 0x7

    .line 324
    .local v2, "headerSeptets":I
    invoke-static {p0, v2, v1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v3

    .line 328
    .local v3, "ret":[B
    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 329
    const/4 v1, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    return-object v3

    .line 318
    .end local v0    # "headerBits":I
    .end local v2    # "headerSeptets":I
    .end local v3    # "ret":[B
    :cond_1
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 683
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v0

    .line 686
    .local v0, "septets":I
    new-array v2, v0, [B

    .line 688
    .local v2, "ret":[B
    array-length v3, v2

    invoke-static {p0, v2, v1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 690
    return-object v2
.end method

.method public static blacklist stringToGsm8BitPackedForAutoLogin(Ljava/lang/String;)[B
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .line 2154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2155
    .local v0, "msgLen":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2156
    const/4 v1, 0x0

    return-object v1

    .line 2159
    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 2160
    .local v2, "ret":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 2161
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    .line 2162
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v2, v5

    .line 2163
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, v2, v5

    .line 2164
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    array-length v5, v2

    sub-int/2addr v5, v1

    invoke-static {v4, v2, v1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 2165
    int-to-byte v1, v0

    aput-byte v1, v2, v3

    .line 2166
    return-object v2
.end method

.method public static greylist-max-o stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 705
    move v0, p2

    .line 706
    .local v0, "outByteIndex":I
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 707
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v3, v2

    .line 710
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 711
    .local v4, "sz":I
    :goto_0
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    sub-int v6, v0, p2

    if-ge v6, p3, :cond_3

    .line 714
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 716
    .local v6, "c":C
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 718
    .local v7, "v":I
    if-ne v7, v5, :cond_2

    .line 719
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 720
    if-ne v7, v5, :cond_0

    .line 721
    const/16 v5, 0x20

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    goto :goto_1

    .line 724
    :cond_0
    add-int/lit8 v8, v0, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_1

    .line 725
    goto :goto_2

    .line 728
    :cond_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outByteIndex":I
    .local v5, "outByteIndex":I
    const/16 v8, 0x1b

    aput-byte v8, p1, v0

    move v0, v5

    .line 732
    .end local v5    # "outByteIndex":I
    .restart local v0    # "outByteIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    int-to-byte v8, v7

    aput-byte v8, p1, v0

    .line 712
    .end local v6    # "c":C
    .end local v7    # "v":I
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    .line 736
    .end local v3    # "i":I
    .end local v4    # "sz":I
    .end local v5    # "outByteIndex":I
    .restart local v0    # "outByteIndex":I
    :cond_3
    :goto_2
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_4

    .line 737
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outByteIndex":I
    .local v3, "outByteIndex":I
    aput-byte v5, p1, v0

    move v0, v3

    goto :goto_2

    .line 739
    .end local v3    # "outByteIndex":I
    .restart local v0    # "outByteIndex":I
    :cond_4
    return-void
.end method
