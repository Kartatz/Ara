#define UERR_SUCCESS 0

#define UERR_FAILURE -50

#define UERR_MEMORY_ALLOCATE_FAILURE -1

#define UERR_CURL_FAILURE -2
#define UERR_CURLU_FAILURE -3
#define UERR_STRSTR_FAILURE -5
#define UERR_M3U8_UNTERMINATED_STRING_LITERAL -6

#define UERR_JSON_CANNOT_PARSE -7
#define UERR_JSON_MISSING_REQUIRED_KEY -8
#define UERR_JSON_NON_MATCHING_TYPE -9

#define UERR_ATTACHMENT_DRM_FAILURE -10
#define UERR_NO_STREAMS_AVAILABLE -11
#define UERR_TIDY_FAILURE -12
#define UERR_PROVIDER_SESSION_EXPIRED -13
#define UERR_M3U8_PARSE_FAILURE -14
#define UERR_M3U8_MISSING_REQUIRED_ATTRIBUTE -14
#define UERR_FSTREAM_FAILURE -15

#define UERR_TERMIOS_FAILURE -16
#define UERR_FDOPEN_FAILURE -17
#define UERR_FWRITE_FAILURE -18
#define UERR_FGETS_FAILURE -19
#define UERR_FILENO_FAILURE -20

#define UERR_NOT_IMPLEMENTED -21
#define UERR_UNSUPPORTED_MEDIA_PROVIDER -22
#define UERR_PROVIDER_LOGIN_FAILURE -23
#define UERR_TIDY_ELEMENT_NOT_FOUND -24
#define UERR_UNSUPPORTED -25
#define UERR_CURL_GETINFO_FAILURE -26
#define UERR_BUFFER_OVERFLOW_FAILURE -27

struct SystemError {
	int code;
	char message[256];
};

#ifdef __cplusplus
extern "C" {
#endif

struct SystemError get_system_error(void);

#ifdef __cplusplus
}
#endif

const char* strurr(const int code);

#pragma once
